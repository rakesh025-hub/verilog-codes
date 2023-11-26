module onebitram_tb1();

reg write_enable;
reg write_data;
reg read_enable;
wire read_data;
reg clock=0;


onebitram  uut(write_enable,write_data,read_enable,read_data);
always #5 clock=~clock;

initial
begin

write_enable=0;
write_data=0;
read_enable=0;

write_enable=1; write_data=1;#10;

write_enable=0;read_enable=1; #10;


if(read_data ===1)
$display("test is passed");
else
$display("test failed");

$finish ();

end
endmodule