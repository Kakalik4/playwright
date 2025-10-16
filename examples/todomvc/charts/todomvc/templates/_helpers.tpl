{{- define "todomvc.name" -}}
{{- default .Chart.Name .Values.nameOverride -}}
{{- end -}}

{{- define "todomvc.fullname" -}}
{{- printf "%s-%s" (include "todomvc.name" .) .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "todomvc.labels" -}}
app.kubernetes.io/name: {{ include "todomvc.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
