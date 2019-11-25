# Lab 10

## 실습 내용

### **IR CONTROLLER**

#### **Submodule 1** 
: nco - clk, cnt 생성

#### **Submodule 2** 
: fnd_dec - 7 segment 생성

#### **Submodule 3** 
: double_fig_sep - 두 자리 정수를 왼쪽과 오른쪽 값으로 분리

#### **Submodule 4** 
: led_disp - 각각의 segment를 led에 display

#### **Submodule 5**
: ir_rx - 밑에 추가 설명

#### **Top Module**
 : 각각의 submodule을 연결하여 리모콘을 작동시켰을 때 해당 버튼에 대응하는 24비트 데이터를 led에 표현되도록 함.

### **적외선 통신 - 송신과 수신**
: 송신부 - 적외선을 발생시켜 정보를 전달한다. 이 때, 리모콘의 버튼에 따라 서로 다른 정보를 전달할 수 있어야 한다.
			   - 신호를 "MODULATE"하여  전달한다. 이 과정에서 송신하는 회사에 따라 소유하는 주파수에 맞추기 위해 carrier signal을 추가한다.
: 수신부 - 포토다이오드(빛에너지->전기에너지)를 이용하여 송신부에서 받은 적외선의 빛 에너지를 전기 에너지로 변환시킨다.
			  - 

### **module ir_rx**
: 

### FPGA 실습 (팀)
 : 분, 초가 작동되는 디지털 시계를 구현하고, mode를 바꿔 디지털 시계의 시간을 조절할 수 있도록 함
  
 
: debounce module을 이용하여 오류를 수정
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE4Nzc2NjM2MTgsMjEzOTQxODQ4NywtMT
UxMzUzMjU0Nl19
-->