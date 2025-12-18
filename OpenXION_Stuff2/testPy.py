from tkinter.simpledialog import askinteger
 
root = tk.Tk()
prompt = askinteger("Input", "Input an Integer")
print(prompt)
 
root.mainloop()