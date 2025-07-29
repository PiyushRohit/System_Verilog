module ram_test;
  reg [9:0] address;
  wire [7:0] data_out;
  reg [7:0] data_in;
  reg write, select;
  integer k, myseed;

  // Instantiate the RAM module
  ram dut (
    .data_out(data_out),
    .data_in(data_in),
    .addr(address),
    .wr(write),
    .cs(select)
  );
  
  initial begin
    $dumpfile("dut.vcd");
    $dumpvars;
  end

  initial begin
    myseed = 35;

    // Writing data into RAM
    for (k = 0; k <= 1023; k = k + 1) begin
      address = k;
      data_in = (k + k) % 256;
      write = 1;
      select = 1;
      #2;
      write = 0;
      select = 0;
      #1;
    end

    // Reading random data from RAM
    $display("\n--- Reading Random Memory Locations ---");
    repeat (20) begin
      address = $random(myseed) % 1024;
      write = 0;
      select = 1;
      #2;  // Allow some time for data_out to settle
      $display("Address: %5d  Data read: %4d", address, data_out);
      select = 0;
      #1;
    end

    $finish;
  end
endmodule