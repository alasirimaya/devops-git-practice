# ☁️ Oracle Cloud Infrastructure (OCI)

Hands-on cloud infrastructure exercises completed during my DevOps training using Oracle Cloud Infrastructure.

The exercises focused on building the networking, access-control, and compute resources required to host and run applications in a cloud environment.

---

## 🌐 Virtual Cloud Network

Configured an OCI Virtual Cloud Network (VCN) and supporting networking resources.

### Configuration

- Created a custom VCN
- Configured public and private subnets
- Created an Internet Gateway
- Configured routing for internet connectivity
- Worked with security rules for controlling network traffic
- Used private IP addressing and subnet CIDR ranges

### Network Structure

```text
OCI VCN
│
├── Public Subnet
│   ├── Internet Gateway
│   └── Compute Instance
│
└── Private Subnet
