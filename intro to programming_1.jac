# Helper function to generate greeting based on the hour
def check_time(hour: int) -> str {
    if (hour >= 5 and hour < 12) {
        return "Good morning!";
    } elif (hour >= 12 and hour < 17) {
        return "Good afternoon!";
    } elif (hour >= 17 and hour < 21) {
        return "Good evening!";
    } else {
        return "Hello!";
    }
}

# Main function to format the day's plan
def plan_day(tasks: list, hour: int) -> str {
    greeting = check_time(hour);
    
    # Construct task string using a for loop
    task_str = "";
    for i in range(len(tasks)) {
        if (i == 0) {
            task_str = task_str + tasks[i];
        } else {
            task_str = task_str + ", " + tasks[i];
        }
    }
    
    return f"{greeting} Today's tasks: {task_str}";
}

# Fixed function signature and extra closing brace
def get_tasks() -> list {
    l = [];
    n: str = "";

    while True {
        n = input("Enter tasks (or 0 to stop): ");
        if (n == "0") {
            break;
        }
        l.append(n);
    }

    return l;
}
def get_time() -> int {
    return int(input("Enter the current hour (0-23): "));
}

with entry {
    my_tasks = get_tasks();
    time = get_time();
    plan = plan_day(my_tasks, time);
    print(plan);
}