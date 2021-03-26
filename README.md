## IP To ASN

[![GitHub Workflow Status (branch)](https://img.shields.io/github/workflow/status/crazyuploader/IP_To_ASN/IP%20To%20ASN%20Runner/main?label=GitHub%20Actions%20Main%20Branch&logo=github-actions)](https://github.com/crazyuploader/IP_To_ASN/actions)

Daily GitHub Actions Runner which pushes IP To ASN JSON to [GitLab](https://gitlab.com/crazyuploader/ip_asn_json).

It uses [ASN Intelligence](https://github.com/pavel-odintsov/asn_intelligence) to parse full dumps of BGP tables and create a JSON with IPs to ASNs mapping.

- [IPv4 JSON](https://gitlab.com/crazyuploader/ip_asn_json/-/raw/master/prefix_asn_mapping_v4.json)
- [IPv6 JSON](https://gitlab.com/crazyuploader/ip_asn_json/-/raw/master/prefix_asn_mapping_v6.json)

More details at: https://github.com/pavel-odintsov/asn_intelligence
