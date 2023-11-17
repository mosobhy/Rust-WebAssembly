// build the calculater interface functions
#[no_mangle]
extern fn add(num1: i32, num2: i32) -> i32 {
    num1.wrapping_add(num2)
}

#[no_mangle]
extern fn subtract(num1: i32, num2:i32) -> i32 {
    num1.wrapping_sub(num2)
}

#[no_mangle]
extern fn multiply(num1: i32, num2: i32) -> i32 {
    num1.wrapping_mul(num2)
}

#[no_mangle]
extern fn divide(num1: i32, num2: i32) -> i32 {
    // perform a checked division
    match num1.checked_div(num2) {
        Some(result) => result,
        None => 0,
    }
}