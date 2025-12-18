from tkinter import *
import tkSimpleDialog
import tkMessageBox
root = Tk()
w = Label(root, text= "Answer")
w.pack()
answer = tkMessageBox.showinfo("Welcome", "Add welcome message here")
print answer
