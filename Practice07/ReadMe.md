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

####**Submodule 5**
: ir_rx - 밑에 추가 설명

#### **Top Module**
 : 저번 시간에 만든 fnd_dec, double_fig_sep, led_disp를 이용하여 디지털 시계의 분, 초 부분 구현

### FPGA 실습 (팀)
 : 분, 초가 작동되는 디지털 시계를 구현하고, mode를 바꿔 디지털 시계의 시간을 조절할 수 있도록 함
  
 
: debounce module을 이용하여 오류를 수정
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTI4NzI3Njc3MSwxMzg1OTI5MjMwXX0=
-->