// https://programmers.co.kr/learn/courses/30/lessons/42746

function solution(numbers) {
    // https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Global_Objects/Array/sort
    
    let numbersStrArr = numbers.map((el) => String(el));
    numbersStrArr.sort((a, b) => Number(b+a) - Number(a+b));  // return 값이 음수일 때만 자리를 바꿔준다.
                                            // a에 뒤의 인덱스 요소가 들어가고, b에 앞의 인덱스 요소가 들어간다.
    if(numbersStrArr[0] === '0') {
        return '0';
    }
    return numbersStrArr.join('');
}