QT -= gui
# Qt 프레임워크에서 사용할 API 항목 또는 그룹을 명시 / -=이니까 gui 모듈을 사용하지 않는다는 뜻.
# 다음처럼 작성하면 어플리케이션 개발 후 배포시 실행프로그램이 사용하는 모듈의 용량을 줄일 수 있다.

CONFIG += c++17 console
# CONFIG는 빌드 설정 / c++17버전을 사용해서 빌드하고 프로젝트의 속성이 console 프로그램이다.
CONFIG -= app_bundle
# app_bundle : MacOS에서 빌드할 때 console 프로그램 속성
# 지금은 윈도우에서 사용하니까 -= app_bundle

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp
# SOURCE 매크로는 소스파일을 지정
# 헤더파일이 있다면 HEADER 매크로에 지정

# Default rules for deployment.
# 특정 플랫폼일 때 수행되는 예제

qnx: target.path = /tmp/$${TARGET}/bin
# QNX라는 플랫폼일 때 수행되는 라인
else: unix:!android: target.path = /opt/$${TARGET}/bin
# QNX가 아니라 리눅스 플랫폼일 경우에 수행되는 라인
!isEmpty(target.path): INSTALLS += target
# QNX와 리눅스가 둘 다 아닌 경우에 수행되는 라인
