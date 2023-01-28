import subprocess


def add_numbers(a, b):
    # Pass input to Julia script
    result = subprocess.run(["julia", "comm_julia.jl", str(
        a), str(b)], capture_output=True).stdout.decode()
    return result


a = 5
b = 7
result = add_numbers(a, b)
print("Result:", result)
