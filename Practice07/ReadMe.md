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
 : 분, 초가 작동되는 디지털 시계를 구현하고, mode를 바꿔 디지털 시계의 시간을 조절할 수 있도록 함
  
 
: debounce module을 이용하여 오류를 수정
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTM4NTkyOTIzMF19
-->
