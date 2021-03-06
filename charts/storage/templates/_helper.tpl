{{- define "mainnode.WeedUrls" -}}
{{- $replicaCount := int .Values.mainnode.replicas }}
{{- $clusterDomain := .Values.global.clusterDomain }}
{{- $messages := list -}}
{{ range $i := until $replicaCount }}
  {{- $messages = printf "drycc-storage-mainnode-%d.drycc-storage-mainnode.$(NAMESPACE).svc.%s:9333" $i $clusterDomain | append $messages -}}
{{ end }}
{{- $message := join "," $messages -}}
{{- printf "%s" $message }}
{{- end -}}

{{- define "mainnode.PdUrls" -}}
{{- $replicaCount := int .Values.mainnode.replicas }}
{{- $clusterDomain := .Values.global.clusterDomain }}
{{- $messages := list -}}
{{ range $i := until $replicaCount }}
  {{- $messages = printf "https://drycc-storage-mainnode-%d.drycc-storage-mainnode.$(NAMESPACE).svc.%s:2379" $i $clusterDomain | append $messages -}}
{{ end }}
{{- $message := join "," $messages -}}
{{- printf "%s" $message }}
{{- end -}}
