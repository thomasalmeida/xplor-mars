RSpec.describe Xplor::Cli do
  describe ".call" do
    context "when have input file" do
      context "with wrong arguments" do
        it "shows error message" do
          expect { system %(bin/xplor -f hello_command) }
            .to output("Error: invalid option: -f\n")
            .to_stdout_from_any_process
        end

        context "with correct arguments" do
          context "and input file have empty commands" do
            it "shows error message" do
              expect { system %(bin/xplor -i ./spec/fixtures/input_empty.txt) }
                .to output("Internal error!\n")
                .to_stdout_from_any_process
            end
          end

          context "and input file have commands and no output file path" do
            it "shows final position of vehicle" do
              expect { system %(bin/xplor -i ./spec/fixtures/input.txt) }
                .to output("1 3 N \n9 1 E [Your space vehicle is out of range]\n5 1 E \n")
                .to_stdout_from_any_process
            end
          end

          context "and input file have commands and output file path" do
            it "creates file in path defined" do
              expect { system %(bin/xplor -i ./spec/fixtures/input.txt -o ./spec/fixtures/output.txt) }
                .to output("")
                .to_stdout_from_any_process
      
              expect(File.read("./spec/fixtures/output.txt")).to eq("1 3 N \n9 1 E [Your space vehicle is out of range]\n5 1 E \n")
            end
          end

        end
      end
    end

    context "when haven't input file" do
      context "and when input invalid data" do
        it "shows error message" do
          expect { system %(printf "" | bin/xplor) }
            .to output("Define maximum height. Example: 5 5\nInternal error!\n")
            .to_stdout_from_any_process
        end
        
        context "and when input valid data" do
          context "without output file path" do
            it "shows final position of vehicle" do
              expect { system %(printf "5 5\n1 2 N\nLMLMLMM\n" | bin/xplor) }
                .to output("Define maximum height. Example: 5 5\nDefine initial positiom and pointer. Example: 1 2 N\nDefine list of commands. Example: LMLMLMLMM\n2 1 E \n")
                .to_stdout_from_any_process
            end
          end

          context "with output file path" do
            it "creates file in path defined" do
              expect { system %(printf "5 5\n1 2 N\nLMLMLMM\n" | bin/xplor -o ./spec/fixtures/output_cli.txt) }
                .to output("Define maximum height. Example: 5 5\nDefine initial positiom and pointer. Example: 1 2 N\nDefine list of commands. Example: LMLMLMLMM\n")
                .to_stdout_from_any_process
        
              expect(File.read("./spec/fixtures/output_cli.txt")).to eq("2 1 E \n")
            end              
          end
        end
      end
    end
  end
end
 