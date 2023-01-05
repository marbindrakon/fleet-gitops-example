{{- define "ocp-base-config.ptpKvmModprobe" -}}
# Enable PTP KVM driver
ptp_kvm
{{- end -}}
{{- define "ocp-base-config.chronyConfigData" -}}
{{- if .Values.timesync.ptp.enabled -}}
refclock PHC /dev/{{ .Values.timesync.ptp.device }} poll 3 dpoll -2 offset 0 stratum {{ .Values.timesync.ptp.sourceStratum }}
{{ end }}
{{ range .Values.timesync.ntpServers }}
server {{ . }} iburst
{{ end }}
stratumweight 0
driftfile /var/lib/chrony/drift
rtcsync
makestep 10 3
bindcmdaddress 127.0.0.1
bindcmdaddress ::1
keyfile /etc/chrony.keys
commandkey 1
generatecommandkey
noclientlog
logchange 0.5
logdir /var/log/chrony
{{- end -}}
