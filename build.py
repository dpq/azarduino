#!/usr/bin/python
import os

dir = os.path.dirname(os.path.realpath(__file__))

files = os.listdir(dir)
mods = []
contents = []

for f in files:
    if f[-2:]==".c":
        mods.append(f[:-2])
        contents.append(open(os.path.join(dir,f)).read())

template=open(os.path.join(dir,"template.xino")).read()

loopstr, setupstr = "\n  ", "\n  "

for m in mods:
    loopstr += "loop_%s();\n  " % m
    setupstr += "setup_%s();\n  " % m

res=template.replace("/*INCLUDE*/", '\n'.join(contents)).replace("/*SETUP*/", setupstr).replace("/*LOOP*/", loopstr)

f = open(os.path.join(dir,"az.ino"), 'wb')
f.write(res)
f.close()
