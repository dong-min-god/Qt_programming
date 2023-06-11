#include <QCoreApplication>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    // QCoreApplication 클래스의 오브젝트 선언
    // Qt라는 이벤트 루프를 통해 프로그램이 종료되지 않고 사용자 또는 이벤트로부터 요청을 처리

    int myVal = 100;
    qDebug() << "Hello World.";
    qDebug("Qt First Project. My Value. %d", myVal);
    // qDebug()함수는 printf()함수와 동일한 역할

    return a.exec();
    // a.exec() 멤버함수를 사용해야만 main()함수 처리가 끝나더라도 프로그램이 종료되지 않는다.
}
