clear;
f1=10;
f2=20;
fs=240;
N=16
t=0:0.01:2;
y=sin(2*pi*f1*t) + sin(2*pi*f2*t);
subplot(2,2,1);
plot(t,y);

n=0:200;
x=sin(2*pi*n*f1/fs) + sin(2*pi*n*f2/fs);
subplot(2,2,2);
stem(n,x);

nn=0:N-1;
YY=fft(x,N);
XX=abs(fft(YY))
subplot(2,2,3:4);
stem(nn,XX);
