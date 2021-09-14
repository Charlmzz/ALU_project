module fa(a,b,cin,sum,cout);
    input a,b,cin;
    output sum,cout;
    wire e,f,g;
    xor x1(e,a,b);
    xor x2(sum,e,cin);
    and g1(f,e,cin);
    and g2(g,a,b);
    or g3(cout,f,g);
endmodule
