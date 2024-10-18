fn main() {
    count_to_billion();    
}

fn count_to_billion() {
    let mut count = 0;
    while count < 1_000_000_000 {
        count += 1;
    }
    println!("Final count: {}", count);
}