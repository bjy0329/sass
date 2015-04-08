# sass #
##CSS Preprocessor##

>SASS는 CSS3를 보다 멋지게 활용할 수 있도록 도와 주는 강력한 도구에요. 중첩/변수/믹스인/선택자 상속 등 막강한 기능을 자랑합니다

## Pre Processor ? ##

> 웹 브라우저는 **프로세서(Processor)**로서 웹 데이터(HTML, CSS, JS 등)을 다운로드 받은 후, 해석하여 화면에 해석된 데이터를 랜더링됩니다. 다운로드 받은 파일 중 해석 불가능한 파일의 경우는 해석하지 않고 무시하죠. CSS파일이 아닌 **SASS, LESS** 등의 파일을 브라우저는 해석하지 못합니다. SASS, LESS 등 ‘CSS를 강력하게 만들어 줄 스타일 언어’를 활용할 경우, CSS로 변경해 줄 사전 프로세싱 과정이 필요합니다. 이를 ‘브라우저에서 해석되기 전에 미리 프로세싱한다’고 해서 ‘Pre-Processing’한다고 부릅니다.


## Ruby 가 필요합니다. ##

> SASS를 사용하기 위해서는 먼저 Ruby가 설치되어 있어야 합니다. OSX는 기본적으로 설치가 되어 있는 반면, Windows는 별도의 설치 과정이 필요합니다.

* <a href="http://rubyinstaller.org/" target="_blank">[Windows 사용자는 Ruby를 설치!]</a>


####ruby --version, ruby -v####
> 터미널(Terminal)을 구동한 후 **ruby --version, ruby -v** 를 입력하면 설치된 루비 정보를 볼 수 있습니다.

![Valid XHTML](https://raw.githubusercontent.com/bjy0329/sass/master/image/intro/img_intro01.gif).


####OSX 사용자를 위한 Upgrade Ruby####
>OSX에서 Ruby를 최신 버전으로 업그레이드하려면 Xcode & Homebrew를 먼저 설치한 후, brew 명령어를 통해 최신버전의 ruby를 설치합니다. 설치가 마무리되면 shell 경로에 아래 코드를 추가하고 저장/다시 실행하면 최신 버전의 Ruby를 사용할 수 있습니다. **export PATH="/usr/local/opt/ruby/bin:$PATH"**

* <a href="http://coolestguidesontheplanet.com/upgrading-ruby-osx/" target="_blank">[클릭!!!]</a>





##Ruby Gem 을 이용해 SASS를 설치합니다.##
>gem install 명령어를 사용해 SASS 파일을
운영체제에 설치할 수 있습니다.

![Valid XHTML](https://raw.githubusercontent.com/bjy0329/sass/master/image/intro/img_intro02.gif).

##OSX 사용자를 위한 팁##
>gem install sass 를 입력하면 sass 가 설치되는데 만약 오류 메시지가
뜬다면 **sudo** 를 입력한 후, gem install sass 를 입력하여 설치합니다.**sudo gem install sass**


##sass --version, sass -v##
>터미널(Terminal)을 구동한 후 **sass --version, sass -v** 를 입력하면 설치된 SASS 정보를 볼 수 있습니다.

##sass --help, sass -h##
>터미널(Terminal)을 구동한 후, sass --help, sass -h를 입력하면 SASS 명령어 도움말 정보를 볼 수 있습니다.

##**GOW (Gnu on Windows)** – 윈도우에서 리눅스 명령어 활용##
> Mac 터미널(Terminal)에서 사용하던 명령어를 윈도우 환경에서도 사용할 수 있도록 만들어주는 GOW 설치 및 활용 방법을 소개합니다. GNU On Windows (GOW)은 현재 약 130 개 정도의 GNU utility 를 윈도우 프로그램으로 컴파일 해서 제공해 줍니다.

*CMD에서 사용한 명령어 목록*

| 명령어   | 설명                                |
|----------|-------------------------------------|
|gow -V    | gow 버전 체크                       |
|gow -h    | gow 도움말                          |
|gow -l    | gow 명령어 리스트                   |
|cd        | 디렉토리 변경(Change Directory)     |
|ls        | 리스트 (List)                       |
|rm        | 제거(파일, Remove)                  |
|rmdir     | 제거 (폴더, Remove Directory)       |
|touch     | 파일 생성                           |
|mkdir     | 디렉토리 생성                       |
|clear     | CMD 화면 비우기                     |

*<a href="https://github.com/bmatzelle/gow/releases" target="_blank">GOW 다운로드</a>

##SASS CSS Preprocessor SASS  프리프로세싱 방법##
> 브라우저에서 바로 해석될 수 없는 SASS 파일은 사전에 CSS 파일로 변경하는 프리프로세싱 과정을 거쳐야 합니다.

###watch File 파일 하나만 설정###
* **sass [option] [input] [output]**

	* 터미널(Terminal)을 구동한 후, sass input.sass ouput.css 를 입력하면 SASS(sass, scss) **파일을 CSS로 변환** 시켜줍니다.

###watch Directory 폴더의 파일을 모두 설정###
* **sass ```--watch``` [input] : [output]**

	* 터미널(Terminal)을 구동한 후, sass --watch sass:css 를 입력하면 SASS 폴더 내부의 파일을 CSS 폴더 내부에 변환/저장합니다. ```(지속적 감시, Ctrl+C 중지)```

###CSS & SASS/SCSS 파일간 변환###
> 필요에 따라 CSS → SASS, SASS ↔ SCSS 파일간 포멧 변경이 가능합니다.

```
# CSS → SCSS
sass-convert style.css style.scss
```
```
# CSS → SASS
sass-convert style.css style.sass
```
```
# SCSS → SASS
sass-convert style.scss style.sass
```

##sublime text3 plugin - sass beautify##
>SASS/CSS 코드를 보기 좋게 만들어 줍니다.

* 명령어 팔레트(Ctrl+Shift+P)에서 sass beautify 를 입력하면 SASS Beaytify 명령을 선택하여 실행할 수 있습니다.

##converter##
* **<a href="http://www.sasstoscss.com/" target="_blank">sasstoscss.com</a> ```SASS ↔ SCSS```**
* **<a href="http://css2sass.herokuapp.com/" target="_blank">css2sass.herokuapp.com</a> ```CSS ↔ SASS```**

##워크스페이스(Workspace) 연결로 실시간 에디팅##
>크롬 웹 브라우저에서는 워크스페이스 설정을 통해 SASS 코드를 편집한 내용을 실시간으로 반영/저장할 수 있습니다.

* **<a href="https://developer.chrome.com/devtools/docs/workspaces" target="_blank">설명보기</a>**

#SASS + Compass#
##Compass는 SASS에서 활용하는 프레임워크##
>CSS3, 타이포그래피, 그리드, 레이아웃 등 미리 정의된 모듈을 불러와서 사용할 수 있어 유용합니다.

##compass##

* **표현을 위한 class 속성을 사용하지 않고도 의미있는 마크업이 가능합니다.**
* **재사용 가능한 웹 디자인 모듈이 유용하게 쓰일 수 있습니다.**
* **Sprites 이미지를 순식간에 만들어 낼 수 있습니다.**
* **제공되는 CSS3 믹스인을 활용하면 코드 작성이 쉬워집니다.**
* **아름다운 타이포그래피를 제공합니다.**

###gem install compass###
>gem install compass 를 입력하면 compass 가 설치되는데 만약 ```오류 메시지가 뜬다면 sudo 를 입력한 후, gem install compass 를 입력하여 설치합니다.(맥사용자만 해당)```

###compass --version, compass -v###
>터미널(Terminal)을 구동한 후, compass --version, compass -v 를 입력하면 설치된 Compass 정보를 볼 수 있습니다.

###compass --help, compass -h ###
>터미널(Terminal)을 구동한 후, compass --help, compass -h 를 입력하면 Compass 명령어 도움말 정보를 볼 수 있습니다.

###compass init or compass create [Project]###
>터미널(Terminal)을 구동한 후, compass init 또는 compass create를 입력하면 Compass 프로젝트 템플릿을 생성합니다.

![Valid XHTML](https://raw.githubusercontent.com/bjy0329/sass/master/image/intro/compass_init.gif).

###config.rb###
>Compass 프로젝트 설정을 위한 최초 Ruby 파일입니다.

```
require 'compass/import-once/activate'
# compass 플러그인 추가
# 미디어쿼리를 위한 combiner(설치필요)
# https://github.com/aaronjensen/sass-media_query_combiner
require 'sass-media_query_combiner'

# 프로젝트 내 폴더 경로 지정
http_path = "/"
css_dir = "css"
sass_dir = "sass"
images_dir = "image"
javascripts_dir = "js"
sass_options = {:sourcemap => true}
enable_sourcemaps = true 

# 소스맵
sass_options = {:sourcemap => true}
enable_sourcemaps = true 

# SASS => CSS 변경 시에 변경되는 아웃풋 스타일 설정
# output_style = :expanded or :nested or :compact or :compressed
output_style = :nested

# 상대경로 지정 설정
relative_assets = true

# 변경된 내용 주석 처리 여부
line_comments = false


# 우선시 할 문법모드 선택
# :sass :scss

# 들여쓰기 구문인 *.sass 문법을 선호한다면 아래 주석을 비활성화 합니다.
# project again passing --syntax sass, or you can uncomment this:
# 또는 아래 주석을 비활성화 합니다.
# preferred_syntax = :sass
# 그리고 아래 주석을 비활성화해서 명령어를 실행합니다.
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass
preferred_syntax = :scss
```

####SASS→CSS Output Style####
* CSS Output Style :nested

```
	#main { 
		color: #fff; 
		background-color: #000; }

	#main p {
		font-size:16px;}
```

* CSS Output Style :expanded

```
	#main { 
		color: #fff; 
		background-color: #000; 
	}

	#main p {
		font-size:16px;
	}
```

* CSS Output Style :compact

```
	#main {color:#fff;background-color:#000;}
	#main p {font-size:16px;}
```

* CSS Output Style :compressed

```
	#main{color:#fff;background-color:#000;}#main p{font-size:16px;}
```


###CSS 소스맵(Chrome)을 활용한 SASS 코드 에디팅###
* **<a href="https://developer.chrome.com/devtools/docs/css-preprocessors" target="_blank">설명보기</a>**
* config.rb 파일내 sass_options = {:sourcemap => true} 추가


##SASS, GUI 변환툴##
>명령어 기반의 환경이 다소 어색하다면 그래픽 기반의 환경에서 SASS를 변경 활용할 수도 있습니다.
* **<a href="http://sass-lang.com/install" target="_blank">지원 가능한 GUI 목록 보기</a>**



