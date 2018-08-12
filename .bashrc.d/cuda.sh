
if [ -d /usr/local/cuda-7.5 ]; then
  export CUDA_HOME=/usr/local/cuda-7.5
  eval "pathmunge ${CUDA_HOME}/bin" 2>/dev/null
fi

