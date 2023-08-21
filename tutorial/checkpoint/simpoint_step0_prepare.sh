cd $NEMU_HOME

git checkout cpt-bk
git submodule update --init
cd $NEMU_HOME/resource/simpoint/simpoint_repo/analysiscode && make simpoint -j4
cd $NEMU_HOME/resource/gcpt_restore && make -j4

cd $NEMU_HOME
make clean
make ISA=riscv64 XIANGSHAN=1 -j4