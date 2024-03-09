numeric u; u := 1pc;

outputtemplate := "wave-equation-%c.mps";
beginfig(0)
  numeric dx; dx := 4u;
  z0 = (0,0);
  z1 = (dx,0);
  z2 = (2dx,0);

  label(btex $m$ etex, z0);
  label(btex $m$ etex, z1);
  label(btex $m$ etex, z2);
  draw fullcircle scaled u shifted z0;
  draw fullcircle scaled u shifted z1;
  draw fullcircle scaled u shifted z2;
  label.top(btex $k$ etex, (0.5dx,0));
  label.top(btex $k$ etex, (1.5dx,0));
  draw (z0+(0.5u,0))--(z1-(0.5u,0));
  draw (z1+(0.5u,0))--(z2-(0.5u,0));
  draw (z0+(-0.5dx,0))--(z0-(0.5u,0));
  draw (z2+(0.5u,0))--(z2+(0.5dx,0));
  label.bot(btex $\scriptstyle x_{i-1}(t)$ etex, z0+(0,-0.5u));
  label.bot(btex $\scriptstyle x_{i}(t)$ etex, z1+(0,-0.5u));
  label.bot(btex $\scriptstyle x_{i+1}(t)$ etex, z2+(0,-0.5u));
endfig;
end;