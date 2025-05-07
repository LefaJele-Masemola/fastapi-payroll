def payroll():
    employee_name = input("Enter Employee Name: ")
    hours_worked = float(input("Enter Hours Worked: "))
    hourly_rate = float(input("Enter Hourly Rate: "))

    gross_pay = hours_worked * hourly_rate

    print(f"Employee: {employee_name}")
    print(f"Gross Pay: R{gross_pay:.2f}")

if __name__ == "__main__":
    payroll()
