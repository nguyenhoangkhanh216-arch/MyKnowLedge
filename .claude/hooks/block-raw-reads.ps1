$raw = [Console]::In.ReadToEnd()
try {
    $j = $raw | ConvertFrom-Json
    $fp  = $j.tool_input.file_path
    $pat = $j.tool_input.pattern
    $pp  = $j.tool_input.path
    $check = "$fp|$pat|$pp"
    if ($check -match '[/\\]raw[/\\]') {
        [pscustomobject]@{
            continue   = $false
            stopReason = 'QUERY rule: raw\ is off-limits. Read wiki pages only. Say "ingest <file>" to process raw files.'
        } | ConvertTo-Json -Compress
    }
} catch {}
