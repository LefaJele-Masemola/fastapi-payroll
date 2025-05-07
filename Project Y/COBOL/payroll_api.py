from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()

#root route for homepage
@app.get("/")
def read_root():
  return {"message": "Hello, FASTAPI is running!"}

class PayrollInput(BaseModel):
    employee_name: str
    hours_worked: float
    hourly_rate: float

@app.post("/payroll")
def calculate_payroll(data: PayrollInput):
    gross_pay = data.hours_worked * data.hourly_rate
    return {
        "employee": data.employee_name,
        "gross_pay": f"R{gross_pay:.2f}"
    }
