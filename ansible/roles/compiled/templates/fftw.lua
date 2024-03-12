-- -*- lua -*-
help([[
This module configures fftw {{ version_number }} for single, double and long-double precisions for use
]])
whatis("Version: {{ version_number }}")
whatis("Keywords: fftw, all precisions")
whatis("Description: fftw {{ version_number }} single, double and long-double precision")

load("{{ mpi_module }}")

setenv('PSRHOME_FFTW_LDP_PATH', "{{ fftw_dir }}/{{ version_number }}-long-double")
setenv('PSRHOME_FFTW_DP_PATH', "{{ fftw_dir }}/{{ version_number }}-double")
setenv('PSRHOME_FFTW_SP_PATH', "{{ fftw_dir }}/{{ version_number }}-single")

-- Long Double
prepend_path('PATH', "{{ fftw_dir }}/{{ version_number }}-long-double/bin")
prepend_path('LD_LIBRARY_PATH', "{{ fftw_dir }}/{{ version_number }}-long-double/lib")
prepend_path('LIBRARY_PATH', "{{ fftw_dir }}/{{ version_number }}-long-double/lib")
prepend_path('INCLUDE', "{{ fftw_dir }}/{{ version_number }}-long-double/include")
prepend_path('C_INCLUDE', "{{ fftw_dir }}/{{ version_number }}-long-double/include")
prepend_path('CPATH', "{{ fftw_dir }}/{{ version_number }}-long-double/include")
prepend_path('MANPATH', "{{ fftw_dir }}/{{ version_number }}-long-double/share/man")
prepend_path('PKG_CONFIG_PATH', "{{ fftw_dir }}/{{ version_number }}-long-double/lib/pkgconfig")

-- Double
prepend_path('PATH', "{{ fftw_dir }}/{{ version_number }}-double/bin")
prepend_path('LD_LIBRARY_PATH', "{{ fftw_dir }}/{{ version_number }}-double/lib")
prepend_path('LIBRARY_PATH', "{{ fftw_dir }}/{{ version_number }}-double/lib")
prepend_path('INCLUDE', "{{ fftw_dir }}/{{ version_number }}-double/include")
prepend_path('C_INCLUDE', "{{ fftw_dir }}/{{ version_number }}-double/include")
prepend_path('CPATH', "{{ fftw_dir }}/{{ version_number }}-double/include")
prepend_path('MANPATH', "{{ fftw_dir }}/{{ version_number }}-double/share/man")
prepend_path('PKG_CONFIG_PATH', "{{ fftw_dir }}/{{ version_number }}-double/lib/pkgconfig")

-- Single
prepend_path('PATH', "{{ fftw_dir }}/{{ version_number }}-single/bin")
prepend_path('LD_LIBRARY_PATH', "{{ fftw_dir }}/{{ version_number }}-single/lib")
prepend_path('LIBRARY_PATH', "{{ fftw_dir }}/{{ version_number }}-single/lib")
prepend_path('INCLUDE', "{{ fftw_dir }}/{{ version_number }}-single/include")
prepend_path('C_INCLUDE', "{{ fftw_dir }}/{{ version_number }}-single/include")
prepend_path('CPATH', "{{ fftw_dir }}/{{ version_number }}-single/include")
prepend_path('MANPATH', "{{ fftw_dir }}/{{ version_number }}-single/share/man")
prepend_path('PKG_CONFIG_PATH', "{{ fftw_dir }}/{{ version_number }}-single/lib/pkgconfig")