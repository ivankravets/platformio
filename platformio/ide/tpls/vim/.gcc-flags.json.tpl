{
  "execPath": "{{ cxx_path.replace("\\", "/") }}",
  "gccDefaultCFlags": "-fsyntax-only {{! cc_flags.replace(' -MMD ', ' ').replace('"', '\\"') }}",
  "gccDefaultCppFlags": "-fsyntax-only {{! cxx_flags.replace(' -MMD ', ' ').replace('"', '\\"') }}",
  "gccErrorLimit": 15,
  "gccIncludePaths": "{{! ','.join("'{}'".format(w.replace("\\", '/')) for w in includes)}}",
  "gccSuppressWarnings": false
}
