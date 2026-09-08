from pathlib import Path
import subprocess,hashlib,re,os,shutil,json
root=Path('/Users/thomasbirnie/Workspace/ToE/Research-Consolidation')
review=root/'papers/navier-stokes/documents/how-the-proof-works/rewrite-20260906'
w=review/'build/equation-first-20260907'
generated=root/'papers/navier-stokes/manuscript/generated'
source=generated/'00-how-proof-works.tex'
expected=hashlib.sha256(source.read_bytes()).hexdigest()
with (w/'full-build.txt').open('w') as log:
 result=subprocess.run(['/Library/TeX/texbin/latexmk','-pdf','-interaction=nonstopmode','-halt-on-error','-file-line-error','-jobname=navier-stokes','-outdir='+str(w/'full-paper'),'main.tex'],cwd=generated,stdout=log,stderr=subprocess.STDOUT)
assert result.returncode==0
assert hashlib.sha256(source.read_bytes()).hexdigest()==expected
log=(w/'full-paper/navier-stokes.log').read_text()
assert not re.search('Overfull|Underfull|Undefined|Missing character|^!',log,re.M)
pdf=w/'full-paper/navier-stokes.pdf'
subprocess.run(['pdftotext','-layout',str(pdf),str(w/'full-final.txt')],check=True)
for dst in [root/'papers/navier-stokes/build/output/authoritative-edge/navier-stokes.pdf',review/'navier-stokes-with-rewrite.pdf']:
 temp=dst.with_name('.equation-first-'+dst.name)
 shutil.copyfile(pdf,temp);os.replace(temp,dst)
print('Full-paper copies updated.')
