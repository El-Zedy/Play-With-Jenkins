{{- define "labels"}}
{{- range $key,$val := .Values.metadata.label}}
    {{$key}}: {{$val}}
{{- end }}
{{- end }}
