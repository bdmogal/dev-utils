function hgrep
{
    history | grep -i "$@"
}

function gkill
{
   kill -9 `ps -ef | grep $1 | grep -v grep | awk '{print $2}'`
}

function jcfind
{
    find . -iname "$1.java"
}

# checks for existance of java files in the present directory
function java_files_exist
{
    for FILE in $@; do
        FILE_NAME="$FILE.java"
        exists=$(find . -name "$FILE_NAME")
        if [[ -z $exists ]]; then
            echo "File $FILE_NAME not found. Please check the file name."
            return 1
        fi
    done
}

# runs "mvn test" in the current directory
# by default, runs all tests
# to run specific tests, include the test file names (or specific test names in TestClass#testMethod format) as arguments
function mvntest
{
    MAVEN_COMMAND="mvn clean test"
    if [[ "$#" -ne 0 ]]; then
        TEST_LIST=$@
        echo "Running the following Maven tests: $TEST_LIST"
        java_files_exist $TEST_LIST
        TESTS_TO_RUN=$(echo $TEST_LIST | sed 's/ /,/g')
        MAVEN_COMMAND="$MAVEN_COMMAND -Dtest=$TESTS_TO_RUN -DfailIfNoTests=false"
    fi
    echo "Maven command = $MAVEN_COMMAND"
    $MAVEN_COMMAND
}

function mc
{
    if [[ $# -eq 0 ]]; then
        MAVEN_COMMAND="mvn clean"
    else
        MAVEN_COMMAND="mvn clean -pl $1 -am -amd"
    fi
    echo "Maven command = $MAVEN_COMMAND"
    $MAVEN_COMMAND
}

function minst
{
    if [[ $# -eq 0 ]]; then
        MAVEN_COMMAND="mvn clean install -DskipTests"
    else
        MAVEN_COMMAND="mvn clean install -DskipTests -pl $1 -am -amd"
    fi
    echo "Maven command = $MAVEN_COMMAND"
    $MAVEN_COMMAND
}

function mpkg
{
    if [[ $# -eq 0 ]]; then
        MAVEN_COMMAND="mvn clean package -DskipTests"
    else
        MAVEN_COMMAND="mvn clean package -DskipTests -pl $1 -am -amd"
    fi
    echo "Maven command = $MAVEN_COMMAND"
    $MAVEN_COMMAND
}

function mtest
{
    if [[ $# -eq 0 ]]; then
        mvn clean compile test 
    else
        mvn clean compile test -pl $1 -am -amd
    fi
    echo "Maven command = $MAVEN_COMMAND"
    $MAVEN_COMMAND
}

