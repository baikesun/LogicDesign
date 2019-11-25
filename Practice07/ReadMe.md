# Lab 10

## 실습 내용

### **IR CONTROLLER**

#### Submodule 1 
: nco - clk, cnt 생성

#### Submodule 2
: fnd_dec - 7 segment 생성

#### Submodule 3
: double_fig_sep - 두 자리 정수를 왼쪽과 오른쪽 값으로 분리

#### Submodule 4 
: led_disp - 각각의 segment를 led에 display

#### Submodule 5
: ir_rx - 밑에 추가 설명

#### **Top Module**
 : 각각의 submodule을 연결하여 리모콘을 작동시켰을 때 해당 버튼에 대응하는 24비트 데이터를 led에 표현되도록 함.

### **적외선 통신 방법- 송신과 수신**
: 송신부 
- 적외선을 발생시켜 정보를 전달한다. 이 때, 리모콘의 버튼에 따라 서로 다른 정보를 전달할 수 있어야 한다.
 - 신호를 "MODULATE"하여  전달한다. 이 과정에서 송신하는 회사에 따라 소유하는 주파수에 맞추기 위해 carrier signal을 추가한다.
 
: 수신부
 - 포토다이오드(빛에너지->전기에너지)를 이용하여 송신부에서 받은 적외선의 빛 에너지를 전기 에너지로 변환시킨다.
 - 송신부에서 전송한 modulate된 빛을 다시 원래의 형태로 돌리기 위해 "DEMODULATION"과정을 거친다. 
 
: 신호 구성
 - 신호를 전송할 때 필요한 신호를 콕 집어서 해석할 수 있게 하기 위해 특정 순서에 맞추어 신호를 전송한다.
- Leader Code -> Custom Code -> Data Code 순서로 전송하며 Custom과 Data 부분은 각각 16bit으로 구성된다. (앞 8bit는 실제로 전송하고 싶은 정보를 담고, 뒤 8bit는 앞의 data를 반전시킨 형태를 담는다. data 전송 과정에서의 오류를 막기 위한 방법이다.)
- Leader Code : 프레임 모드 선택, 버튼을 가볍게 누를 때와 오랫동안 꾹 누를 때를 구분할 수 있음.
- Custom Code : 회사 정보를 나타냄. 회사 별로 특정 코드를 가지고 있어, 송신하는 회사의 정보를 담는다.
- Data Code : 송신 데이터. 실제로 전달하고자 하는 정보를 담는 부분. Low로 표시되는 부분의 길이로 bit를 조절할 수 있다. (ex. 0.565ms = 0 bit , 1.69ms = 1 bit)

### **module ir_rx**
: ir_rx 모듈은 fpga가 리모콘의 정보를 수신할 수 있도록 구성되었다.
: 

### FPGA 실습
 : 리모콘의 버튼을 누른 뒤 led에 해당 버튼에 대응하는 24 bit data가 나타나는지 확인하였다. 아래의 사진은 전원 버튼
  
 
: debounce module을 이용하여 오류를 수정

### Waveform
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTc3NTQzNzMwMywxNDM3NTQ1ODY0LDIxMz
k0MTg0ODcsMTM4NTkyOTIzMF19
-->