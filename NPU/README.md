모듈 설명
2.1 act_n_weight_ctrlr.v
Inputs

start 신호: 모듈 동작을 시작하는 신호.
Configurable Data 신호: 동작에 필요한 설정 파라미터.
GLB에서 Read한 IA 및 Weight data: Global Buffer(GLB)에서 읽은 Input Activation(IA) 및 Weight 데이터.
각 CORE에서 나오는 done 신호: 각 CORE가 작업 완료를 알리는 신호.

Outputs

done 신호: 모듈이 작업을 완료했음을 알리는 신호.
GLB에서 Read하려는 addr 및 en 신호: GLB에서 데이터를 읽기 위한 주소 및 활성화 신호.
어떤 CORE가 start해야 하는지 알리는 신호: 어떤 CORE가 동작을 시작해야 하는지 지시하는 신호.
각 CORE로 transfer되어야 하는 IA 및 weight data 및 해당하는 addr: 각 CORE로 전송할 데이터와 그에 대응하는 주소.

Finite State Machine (FSM)
(IDLE과 DONE 상태에 대한 설명은 생략한다)
SPARSE_CHECK

IA의 IC 1개에 해당하는 data의 1번째 row를 Read하고 그 중 0의 비율을 계산한다.
0의 비율이 50% 초과이면 idle 상태인 SPARSE_CORE가 있는지 찾는 state (SPARSE_CORE_CHECK).
0의 비율이 50% 미만이면 idle 상태인 DENSE_CORE가 있는지 찾는 state (DENSE_CORE_CHECK).

DENSE_CORE_CHECK

dense_core_ready[]: 어떤 DENSE_CORE가 idle 상태인지 알려주는 배열.
dense_core_ready[]는 CORE 모듈에서 done 신호를 발생시키면 이를 받아 배열이 업데이트된다.
CORE에서 done 신호가 발생했다는 것은 CORE가 작업을 끝내고 idle 상태로 진입했음을 의미한다.


DENSE_CORE_CHECK state에서는 dense_core_ready[]의 값들을 pointer를 이용해 탐색하고, ptr이 가리키는 값이 0이면 idle 상태인 CORE를 찾은 것이다.
이제, dense_core_ready[]에서 idle 상태인 CORE의 index 값을 1로 바꾼다.
dense_core_ready[]에서 값이 1인 idx는 해당 CORE가 작업 중임을 의미한다 (IDLE이 아닌 CORE).



SPARSE_CORE_CHECK

DENSE_CORE_CHECK와 유사하게 동작한다.

LOAD_DENSE_DATA

GLB에서 데이터를 가져오는 작업.
GLB에서 현재 IC가 몇 번째 IC인지에 따라 그에 해당하는 IA와 Weight data의 address를 계산한다.
K=3일 때는 각 CORE당 IC 1개에 대해 Conv 연산을 진행한다.
K=1일 때는 각 CORE당 IC 3개에 대해 Conv 연산을 진행한다.


Weight의 경우, 같은 IC를 가지는 여러 OC에 대한 Filter 값을 가져와야 하므로, Offset을 이용하여 address를 계산한다.
각 CORE로 데이터를 내보내는 작업.
각 CORE로 내보낼 데이터를 GLB에서 Read하였으면, 이를 각 CORE로 전송한다.
address의 경우, 매 IC마다 0부터 N-1까지 주소가 매겨진다 (data 개수를 N이라고 가정).



LOAD_SPARSE_DATA

LOAD_DENSE_DATA와 유사하게 동작한다.

IS_DONE

GLB에서 read하는 address가 IA, Weight 모두에 대해 max이면 DONE, 아니면 SPARSE_CHECK state로 전환.

2.2 dense_core.v 및 sparse_core.v
Inputs

act_n_weight_ctrlr에서 나온 CORE start 신호:
이 신호를 받으면 CORE가 IDLE 상태에서 벗어난다.


Configurable data 신호: 설정 파라미터.
act_n_weight_ctrlr에서 나온 IA와 Weight의 data 및 address: Input Activation과 Weight 데이터 및 그에 대응하는 주소.

Outputs

Psum 출력: Convolution 연산이 완료되면 32개 row에 대한 partial sum (psum)이 출력된다.

Flow
(FSM으로 구현하거나 start와 done 신호를 이용한 handshaking으로 구현 가능)

act_n_weight_ctrlr에서 들어온 데이터를 잘 정렬하여 96개의 ia_row_mem과 3개의 weight_row_mem에 write.
data_2_row_mem_done 신호를 받아 모든 row_mem에 데이터 쓰기가 완료되었음을 확인.
모든 row_mem이 준비되었으므로, row_mem에 있는 데이터를 적절히 fetch하여 mac.v 안의 window에 넣음.
더불어, PE 간 network를 이용하여 IA와 Weight를 다른 PE로 전달.
연산 진행 순서는 참조된 그림과 같이 진행됨.
pe_array.v에서 row_mem에 있는 모든 데이터와의 conv 연산이 끝났으면 compute_done 신호를 발생시킴.
dense_core.v 또는 sparse_core.v는 compute_done 신호를 받아 core_done 신호를 발생시킴.

2.2.1 data_2_row_mem.v
Inputs

start 신호: 동작 시작 신호.
Configurable data 신호: 설정 파라미터.
act_n_weight_ctrlr에서 나온 IA와 Weight의 data 및 address: 데이터와 주소.

Outputs

96개의 ia_row_mem 중 어떤 row_mem을 enable 및 write enable해야 하는지에 대한 en, we 신호.
3개의 weight_row_mem 중 어떤 row_mem을 enable 및 write enable해야 하는지에 대한 en, we 신호.
각 ia_row_mem에 들어가야 할 row_mem_data 및 그 data에 대한 row_mem 내에서의 address.
각 weight_row_mem에 들어가야 할 row_mem_data 및 그 data에 대한 row_mem 내에서의 address.

Finite State Machine (FSM)
(IDLE과 DONE 상태에 대한 설명은 생략한다)
LOAD_DATA
K=3일 때

ia_row_mem:
CORE에서 담당하는 IC가 1개이므로, ia_row_mem 1개마다 row 1개에 대한 data 및 address를 load.
Output Row의 개수가 32이면, ia_row_mem은 34개여야 하므로, 총 96개의 row mem에서 offset을 두어 적절한 34개의 ia_row_mem을 enable시킨다.


weight_row_mem:
각 OC마다 1개의 row에는 element가 3개씩 존재한다.
act_n_weight_ctrlr에서 들어오는 weight의 shape는 1x3이 아닌 3x3이므로, 1개 row(3개의 element)에 대한 데이터를 받았으면, 다음 weight_row_mem을 enable시켜야 한다.
예: weight_row_mem_0 → weight_row_mem_1 → weight_row_mem_2 순으로 진행.
OC가 8개이면, “weight_row_mem_0 → weight_row_mem_1 → weight_row_mem_2”를 8번 반복.





K=1일 때

ia_row_mem:
CORE에서 담당하는 IC가 3개이므로, 총 96개의 row mem 모두에 적절히 data 및 address를 할당.


weight_row_mem:
CORE에서 담당하는 IC가 3개이지만, 1x1 filter이므로 각 weight_row_mem은 IC 1개를 담당.
즉, 총 3개의 weight_row_mem이 있으므로, 총 3개의 IC에 대한 데이터를 가지게 됨.



2.2.3 mac.v
(상세 설명이 제공되지 않음)
2.2.4 row_mem_fetch.v
(상세 설명이 제공되지 않음)
2.2.5 pe_net_ctrlr.v
(상세 설명이 제공되지 않음)
2.2.6 zero_skip.v
(상세 설명이 제공되지 않음)
2.3 psum_acc.v
(상세 설명이 제공되지 않음)
2.4 out_mem_acc.v
(상세 설명이 제공되지 않음)
2.9 upsample.v
(상세 설명이 제공되지 않음)
2.10 maxpool.v
(상세 설명이 제공되지 않음)


