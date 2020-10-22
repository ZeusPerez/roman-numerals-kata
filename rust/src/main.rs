fn main() {
    println!("Hello, world!");
}


fn to_roman_numeral(x: i16) -> String {
    return "I".to_string();
}


#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn to_roman_numeral_1() {
        let expected = "I";
        let result = to_roman_numeral(1);
        assert_eq!(expected, result);
    }

    #[test]
    fn to_roman_numeral_2() {
        let expected = "II";
        let result = to_roman_numeral(2);
        assert_eq!(expected, result);
    }

    #[test]
    fn to_roman_numeral_3() {
        let expected = "III";
        let result = to_roman_numeral(3);
        assert_eq!(expected, result);
    }

    #[test]
    fn to_roman_numeral_4() {
        let expected = "IV";
        let result = to_roman_numeral(4);
        assert_eq!(expected, result);
    }

    #[test]
    fn to_roman_numeral_5() {
        let expected = "V";
        let result = to_roman_numeral(5);
        assert_eq!(expected, result);
    }

    #[test]
    fn to_roman_numeral_9() {
        let expected = "IX";
        let result = to_roman_numeral(9);
        assert_eq!(expected, result);
    }

    #[test]
    fn to_roman_numeral_21() {
        let expected = "XXI";
        let result = to_roman_numeral(21);
        assert_eq!(expected, result);
    }

    #[test]
    fn to_roman_numeral_50() {
        let expected = "L";
        let result = to_roman_numeral(50);
        assert_eq!(expected, result);
    }

    #[test]
    fn to_roman_numeral_100() {
        let expected = "C";
        let result = to_roman_numeral(100);
        assert_eq!(expected, result);
    }


    #[test]
    fn to_roman_numeral_500() {
        let expected = "D";
        let result = to_roman_numeral(500);
        assert_eq!(expected, result);
    }


    #[test]
    fn to_roman_numeral_1000() {
        let expected = "M";
        let result = to_roman_numeral(1000);
        assert_eq!(expected, result);
    }

}
