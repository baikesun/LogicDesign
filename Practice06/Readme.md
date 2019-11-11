# Lab 08

## 실습 내용

### **Digital Clock Design**

#### **Submodule 1** 
: controller - mode, position 제어 / debounce 조절

#### **Submodule 2** 
: minsec - max_hit 받아서 sec 59 지나면 min 1 증가

#### **Submodule 3** 
: hms_cnt - min, sec 카운터 값 생성

#### **Submodule 4** 
: debounce - 스위치 누를 때 튕기는 값 조정

#### **Top Module**
 : 저번 시간에 만든 fnd_dec, double_fig_sep, led_disp를 이용하여 디지털 시계의 분, 초 부분 구현

### FPGA 실습 (팀)
 : 분, 초가 작동되는 디지털 시계를 구현하고, mode를 바꿔 디지털 시계의 시간을 조절할 수 있도록 함.
  
 
: debounce module을 이용하여 오류르

## 퀴즈 
### 아래 코드 일부를 수정하여 다음을 구하시오
 ```verilog 
 wire [41:0] six_digit_seg; 
 assign      six_digit_seg = { 4{7'b0000000}, seg_left, seg_right }
  ``` 
  > Q1 - 고정 LED (왼쪽 4개) AAAA 출력
  : `AA_AA_00`, `AA_AA_01`, `AA_AA_02`, … 순으로 LED 변경
  
  `assign    six_digit_seg = {  {4{7'b1110111}}, seg_left, seg_right   }                 ;`
  
> Q2 - 고정 LED 없이 2개의 LED 단위로 1초 Counter 값 표시
 : `00_00_00`, `01_01_01`, `02_02_02`, … 순으로 LED 변경
 
`assign    six_digit_seg = {  seg_left, seg_right, seg_left, seg_right, seg_left, seg_right   }                 ;`

## 결과
 ### **Top Module 의 DUT/TestBench Code 및 Waveform 검증**
 
![](https://github.com/baikesun/LogicDesign/blob/master/Practice06/wavediagram.JPG)

### **FPGA 동작 사진 (3개- 일반, Q1, Q2)**

일반
![](https://github.com/baikesun/LogicDesign/blob/master/Practice06/quiz01.jpg)

Q1
![](https://github.com/baikesun/LogicDesign/blob/master/Practice06/quiz02.jpg)

Q2
![](https://github.com/baikesun/LogicDesign/blob/master/Practice06/quiz03.jpg)

`Please fill up your source`
<!--stackedit_data:
eyJoaXN0b3J5IjpbNzg0MjQxNTM0LC0xNTEzNTMyNTQ2XX0=
-->