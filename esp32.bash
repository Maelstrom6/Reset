# https://esp-rs.github.io/book/writing-your-own-application/generate-project/index.html

cargo install espup
espup install
. /home/chris/export-esp.sh  # Do this every time
cargo install ldproxy


sudo apt install -y pkg-config libusb-1.0-0-dev libftdi1-dev
sudo apt-get install libudev-dev
cargo install espflash --git https://github.com/esp-rs/espflash

sudo apt update
sudo apt install libssl-dev
cargo install cargo-generate

sudo apt install python3-virtualenv
cargo generate esp-rs/esp-template
cargo generate esp-rs/esp-idf-template

cargo build
cargo run








   36  cargo install espup
   37  espup install
   38  . /home/chris/export-esp.sh
   39  ls
   40  cargo install ldproxy
   41  cd ..
   42  git clone https://github.com/esp-rs/esp-template
   43  ls
   44  cargo generate esp-rs/esp-template
   45  cd rust_test_project/
   46  cargo install cargo-generate
   47  sudo apt update
   48  sudo apt install libssl-dev
   49  cargo install cargo-generate
   50  history
   51  cd ..
   52  cargo generate esp-rs/esp-template
   53  cargo build
   54  sudo apt-get install git wget flex bison gperf python python-pip python-setuptools python-serial python-click python-cryptography python-future python-pyparsing python-pyelftools cmake ninja-build ccache
   55  sudo apt-get install git wget flex bison gperf
   56  cargo build
   57  sudo apt-get install git cmake ninja-build ccache
   58  cargo build
   59  espup install
   60  . /home/chris/export-esp.sh
   61  cargo build
   62  cargo run
   63  cargo install espflash --git https://github.com/esp-rs/espflash
   64  sudo apt install -y pkg-config libusb-1.0-0-dev libftdi1-dev
   65  sudo apt-get install libudev-dev
   66  cargo install espflash --git https://github.com/esp-rs/espflash
   67  cargo run
   68  history
   69  cd ..
   70  cargo generate esp-rs/esp-idf-template
   71  . /home/chris/export-esp.sh
   72  cargo build
   73  pip3 install virtualenv
   74  apt install python3-virtualenv
   75  sudo apt install python3-virtualenv
   76  cargo build
   77  cargo run
   78  history
