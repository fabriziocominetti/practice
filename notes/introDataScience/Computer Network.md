# Computer Network

# Table of Content
- [Introduction](#introduction)
- [Network Taxonomy](#network-taxonomy)
- [Standard ISO/OSI](#standard-iso/osi)
- [Interconnection Devices](#interconnection-devices)
- [IP Layer](#ip-layer)
- [TCP and UDP](#tcp-and-udp)
- [HTTP and SSH](#http-and-ssh)

# <a id="introduction"></a>Introduction
A network is a set of hardware devices connected together, either physically or logically to allow them to exchange information.

At a high level, networks are advantageous because they allow computers and people to be connected together, so they can share resources. Some of the specific benefits of networking include communication, data sharing, Internet access, data security and management, application performance enhancement, and entertainment.

### Fundamental Network Characteristics
- _**Networking protocol:**_ defines a set of rules, algorithms, messages and other mechanisms that enable software and hardware in networked devices to communicate effectively. A protocol usually describes a means for communication between corresponding entities at the same OSI Reference Model layer in two or more devices.

- One way that networking technologies are categorized is based on the path used to carry data between devices.
  - _**Circuit switching:**_ a circuit is first established and then used to carry all data between devices.
  - _**Packet switching:**_ no fixed path is created between devices that communicate; it is broken into packets, each of which may take a separate path from sender to recipient.

- Three basic methods are used to address and transmit data between networked devices.
  - _**Unicast transmission:**_ transmission goes from one device to exactly one other; this is the “normal” method used for most message transactions.
  - _**Broadcast transmission:**_ transmission is sent from one device to all connected devices on a network.
  - _**Multicast transmission:**_ transmission is addressed and sent to a select group of devices.

- Networks are usually configured to share resources using one of two basic structural models. 
  - _**Peer-to-peer network:**_ each device is an equal and none are assigned particular jobs.
  - _**Client/server network:**_ devices are assigned particular roles—a small number of powerful computers are set up as servers and respond to requests from the other devices, which are clients.

# <a id="network-taxonomy"></a>Network Taxonomy
## Topologies
Topology defines the structure of the network of how all the components are interconnected to each other. There are two types of topology: physical and logical topology.

Physical topology is the geometric representation of all the nodes in a network.

- _**Bus Topology**_

The bus topology is designed in such a way that all the stations are connected through a single cable known as a backbone cable.

Each node is either connected to the backbone cable by drop cable or directly connected to the backbone cable.

When a node wants to send a message over the network, it puts a message over the network. All the stations available in the network will receive the message whether it has been addressed or not.

![image](https://user-images.githubusercontent.com/75806093/124818675-9c32c600-df6b-11eb-9d68-9a8f9ecd3ede.png)

- _**Ring Topology**_

Ring topology is like a bus topology, but with connected ends.

The node that receives the message from the previous computer will retransmit to the next node.

The data flows in one direction, i.e., it is unidirectional. The data flows in a single loop continuously known as an endless loop.

![image](https://user-images.githubusercontent.com/75806093/124818795-c1bfcf80-df6b-11eb-89fe-ce21c0a5acee.png)

- _**Star Topology**_

Star topology is an arrangement of the network in which every node is connected to the central hub, switch or a central computer.

The central computer is known as a server, and the peripheral devices attached to the server are known as clients.

![image](https://user-images.githubusercontent.com/75806093/124818997-f92e7c00-df6b-11eb-9109-4205461a0636.png)

- _**Tree Topology**_

Tree topology combines the characteristics of bus topology and star topology.

A tree topology is a type of structure in which all the computers are connected with each other in hierarchical fashion.

The top-most node in tree topology is known as a root node, and all other nodes are the descendants of the root node. There is only one path exists between two nodes for the data transmission. Thus, it forms a parent-child hierarchy.

![image](https://user-images.githubusercontent.com/75806093/124819047-0c414c00-df6c-11eb-8624-d160055dce35.png)

- _**Mesh Topology**_

Mesh technology is an arrangement of the network in which computers are interconnected with each other through various redundant connections.

There are multiple paths from one computer to another computer.

The Internet is an example of the mesh topology.

![image](https://user-images.githubusercontent.com/75806093/124819139-2a0eb100-df6c-11eb-87d3-8fc63ae59346.png)

- _**Hybrid Topology**_

The combination of various different topologies is known as Hybrid topology.

![image](https://user-images.githubusercontent.com/75806093/124819225-46aae900-df6c-11eb-86a4-e18aa536a140.png)

## Types and Sizes
A computer network can be categorized by their size.

- _**LAN - Local Area Network**_

Local Area Network is a group of computers connected to each other in a small area such as building, office.

LAN is used for connecting two or more personal computers through a communication medium such as twisted pair, coaxial cable, etc.

It is less costly as it is built with inexpensive hardware such as hubs, network adapters, and ethernet cables.

Wireless LANs (WLANs) are like cabled LANs but use radio frequency or light technology to connect devices without wires. 

- _**MAN - Metropolitan Area Network**_

A metropolitan area network is a network that covers a larger geographic area by interconnecting a different LAN to form a larger network.

In MAN, various LANs are connected to each other through a telephone exchange line.

- _**WAN - Wide Area Network**_

A Wide Area Network is a network that extends over a large geographical area such as states or countries.

A Wide Area Network is quite bigger network than the LAN.

A Wide Area Network is not limited to a single location, but it spans over a large geographical area through a telephone line, fibre optic cable or satellite links.

The internet is one of the biggest WAN in the world.

- _**PAN - Personal Area Network**_

Personal Area Network is a network arranged within an individual person, typically within a range of 10 meters.

Personal computer devices that are used to develop the personal area network are the laptop, mobile phones, media player and play stations.

Wireless Personal Area Network: Wireless Personal Area Network is developed by simply using wireless technologies such as WiFi, Bluetooth. It is a low range network.

Wired Personal Area Network: Wired Personal Area Network is created by using the USB.

### Internetwork
An internetwork refers either generically to a very large network, or specifically to a set of layer-two networks connected using routers at layer three.

An internetworking uses the internet protocol.

The reference model used for internetworking is Open System Interconnection(OSI).

The generic noun internet is a short form for the word internetwork, while the proper noun Internet refers to the global internetwork of TCP/IP networks we all know and use.

- Types of Internetwork:
  - _**Extranet:**_ an extranet is a communication network based on the internet protocol such as Transmission Control protocol and internet protocol.
  - _**Intranet:**_ an intranet is a private network based on the internet protocol such as Transmission Control protocol and internet protocol. An intranet belongs to an organization which is only accessible by the organization's employee or members.

# <a id="standard-iso/osi"></a>Standard ISO/OSI
Networking standards can be classified as proprietary, open or de facto.

Proprietary standards are owned by one particular organization. If that organization has sufficient market clout and the industry lacks alternatives to its standard, it may be adopted by the whole industry, becoming a de facto standard. 

Usually, however, differing proprietary standards compete with each other, resulting in a fragmented market.

In contrast, open standards are not owned by anyone—they are created by neutral organizations to ensure that compatible products can be designed and developed by many different companies. 

## OSI Model
OSI stands for Open System Interconnection is a reference model that describes how information from a software application in one computer moves through a physical medium to the software application in another computer.

OSI consists of seven layers, and each layer performs a particular network function.

OSI model was developed by the International Organization for Standardization (ISO) in 1984, and it is now considered as an architectural model for the inter-computer communications.

OSI model divides the whole task into seven smaller and manageable tasks. Each layer is assigned a particular task. As you go up the layer stack, you move away from concrete, hardware-specific functions to ones that are increasingly abstract, until reaching the realm of user applications at layer seven. 

Each layer is self-contained, so that task assigned to each layer can be performed independently.

![image](https://user-images.githubusercontent.com/75806093/124824912-3fd3a480-df73-11eb-9e1b-59cef1113d66.png)

The OSI model is divided into two layers: upper layers and lower layers.

The upper layer of the OSI model mainly deals with the application related issues, and they are implemented only in the software. The application layer is closest to the end user. Both the end user and the application layer interact with the software applications. An upper layer refers to the layer just above another layer.

The lower layer of the OSI model deals with the data transport issues. The data link layer and the physical layer are implemented in hardware and software. The physical layer is the lowest layer of the OSI model and is closest to the physical medium. The physical layer is mainly responsible for placing the information on the physical medium.

There are the seven OSI layers. Each layer has different functions. A list of seven layers are given below:

1. Physical Layer
2. Data-Link Layer
3. Network Layer
4. Transport Layer
5. Session Layer
6. Presentation Layer
7. Application Layer

![image](https://user-images.githubusercontent.com/75806093/124825066-73163380-df73-11eb-876c-44726414a023.png)

Each layer (except layer 7) provides services the layer above it; each layer (other than layer 1) uses services provided by the layer below. 

- _**Physical Layer**_
The main functionality of the physical layer is to transmit the individual bits from one node to another node.

It establishes, maintains and deactivates the physical connection.

It specifies the mechanical, electrical and procedural network interface specifications.

It is the realm of networking hardware specifications, and is the place where technologies reside that perform data encoding, signaling, transmission and reception functions.

- _**Data-Link Layer**_
This layer is responsible for the error-free transfer of data frames.

It defines the format of the data on the network.

It provides a reliable and efficient communication between two or more devices.

It is mainly responsible for the unique identification of each device that resides on a local network.

It contains two sub-layers:

    - Logical Link Control Layer
    - Media Access Control Layer

Layer two is responsible for logical link control, media access control, hardware addressing, error detection and handling, and defining physical layer standards.

- _**Network Layer**_
It is a layer 3 that manages device addressing, tracks the location of devices on the network.

It determines the best path to move data from source to the destination based on the network conditions, the priority of service, and other factors.

The Data link layer is responsible for routing and forwarding the packets.

Routers are the layer 3 devices, they are specified in this layer and used to provide the routing services within an internetwork.

It is responsible for the tasks that link together individual networks into internetworks. Network layer functions include internetwork-level addressing, routing, datagram encapsulation, fragmentation and reassembly, and certain types of error handling and diagnostics.

- _**Transport Layer**_
The Transport layer is a Layer 4 ensures that messages are transmitted in the order in which they are sent and there is no duplication of data.

The main responsibility of the transport layer is to transfer the data completely.

It receives the data from the upper layer and converts them into smaller units known as segments.

This layer can be termed as an end-to-end layer as it provides a point-to-point connection between source and destination to deliver the data reliably.

The two protocols used in this layer are:

    - Transmission Control Protocol: it is a standard protocol that allows the systems to communicate over the internet.
    - User Datagram Protocol: a transport layer protocol.

- _**Session Layer**_
The Session layer is used to establish, maintain and synchronizes the interaction between communicating devices.

Session layer technologies are often implemented as sets of software tools called application program interfaces (APIs), which provide a consistent set of services that allow programmers to develop networking applications without needing to worry about lower-level details of transport, addressing and delivery.

- _**Presentation Layer**_
A Presentation layer is mainly concerned with the syntax and semantics of the information exchanged between the two systems.

It acts as a data translator for a network.

This layer is a part of the operating system that converts the data from one presentation format to another format.

- _**Application Layer**_
An application layer serves as a window for users and application processes to access network service.

It handles issues such as network transparency, resource allocation, etc.

This layer provides the network services to the end-users.

# <a id="interconnection-devices"></a>Interconnection Devices
- _**Hub**_
A Hub is a hardware device that divides the network connection among multiple devices. When computer requests for some information from a network, it first sends the request to the Hub through cable. Hub will broadcast this request to the entire network. All the devices will check whether the request belongs to them or not. If not, the request will be dropped.

The process used by the Hub consumes more bandwidth and limits the amount of communication. Nowadays, the use of hub is obsolete, and it is replaced by more advanced computer network components such as Switches, Routers.

- _**Switch**_
A switch is a hardware device that connects multiple devices on a computer network. 

A Switch contains more advanced features than Hub.

The Switch contains the updated table that decides where the data is transmitted or not. Switch delivers the message to the correct destination based on the physical address present in the incoming message.

A Switch does not broadcast the message to the entire network like the Hub. It determines the device to whom the message is to be transmitted.

Therefore, we can say that switch provides a direct connection between the source and destination. It increases the speed of the network.

- _**Router**_
This is a hardware device that routes data (hence the name) from a local area network (LAN) to another network connection

A router is a hardware device which is used to connect a LAN with an internet connection. It is used to receive, analyze and forward the incoming packets to another network.

A router works in a Layer 3 (Network layer) of the OSI Reference model.

- _**Gateway**_
A gateway is a hardware device that acts as a "gate" between two networks. It may be a router, firewall, server, or other device that enables traffic to flow in and out of the network.

# <a id="ip-layer"></a>IP Layer
The TCP/IP protocol suite is strongly oriented around the notion of client/server network communication. 

The TCP/IP architectural model has four layers that approximately match six of the seven layers in the OSI Reference Model. 

TCP/IP Protocols:

- IP - Internet Protocol

Provides encapsulation and connectionless delivery of transport layer messages over a TCP/IP network. Also responsible for addressing and routing functions.

- TCP - Transmission Control Protocol

The main transport layer protocol for TCP/IP. Establishes and manages connections between devices and ensures reliable and flow-controlled delivery of data using IP.

- UDP - User Datagram Protocol

A transport protocol that can be considered a “severely stripped-down” version of TCP. It is used to send data in a simple way between application processes, without the many reliability and flow management features of TCP, but often with greater efficiency.

- DNS - Domain Name System

Provides the ability to refer to IP devices using names instead of just numerical IP addresses. Allows machines to resolve these names into their corresponding IP addresses.

- HTTP - Hypertext Transfer Protocol

Transfers hypertext documents between hosts; implements the World Wide Web.

![image](https://user-images.githubusercontent.com/75806093/124830055-a9ef4800-df79-11eb-9a9c-c077e231771d.png)

- _**IP Address**_
IP addresses serve the dual function of device identification and routing. Each network interface requires one IP address, which is network-specific. IP addresses can be either statically or dynamically allocated, and come in unicast, multicast and broadcast forms.

IP addresses are 32-bit binary numbers, which can be expressed in binary, hexadecimal or decimal form. Most commonly, they are expressed by dividing the 32 bits into four bytes and converting each to decimal, then separating these numbers with dots to create dotted decimal notation.

Since IP addresses are 32 bits long, the total address space of IPv4 is 232 or 4,294,967,296 addresses. However, not all of these addresses can be used, for a variety of reasons.

The basic structure of an IP address consists of two components: the network ID and host ID. 

An essential factor in determining how an IP address is interpreted is the addressing scheme in which it is used. The three methods, arranged in increasing order of age, complexity and flexibility, are “classful” addressing, subnetted “classful” addressing, and classless addressing.

- IP “Classful” (Conventional) Addressing

The “classful” IP addressing scheme divides the IP address space into five classes, A through E, of differing sizes. Classes A, B and C are the most important ones, designated for conventional unicast addresses and comprising 7/8ths of the address space. Class D is reserved for IP multicasting, and Class E for experimental use.

In the “classful” IP addressing scheme, the class of an IP address is identified by looking at the first one, two, three or four bits of the address.

![image](https://user-images.githubusercontent.com/75806093/124830560-5af5e280-df7a-11eb-90c1-898f73901758.png)

- _**IP Subnetting**_
Subnet addressing adds an additional hierarchical level to how IP addresses are interpreted, by dividing an organization’s IP network into subnets. This allows each organization to structure its address space to match its internal physical networks, rather than being forced to treat them a flat block.

This solves a number of problems with the original “classful” addressing scheme, but requires changes to how addressing and routing work, as well as modifications to several TCP/IP protocols.

A “classful” network is subnetted by dividing its host ID portion, leaving some of the bits for the host ID while allocating others to a new subnet ID. These bits are then used to identify individual subnets within the network, into which hosts are assigned.

- _**IP Subnet Mask**_
The subnet mask is a 32-bit binary number that accompanies an IP address. It is created so that it has a one bit for each corresponding bit of the IP address that is part of its network ID or subnet ID, and a zero for each bit of the IP address’s host ID. The mask thus tells TCP/IP devices which bits in that IP address belong to the network ID and subnet ID, and which are part of the host ID.

Each of the three IP unicast/broadcast address classes, A, B and C, has a default subnet mask defined that has a one for each bit of the class’s network ID, a zero bit for each bit of its host ID, and no subnet ID bits. The three default subnet masks are 255.0.0.0 for Class A, 255.255.0.0 for class B, and 255.255.255.0 for Class C.

# <a id="tcp-and-udp"></a>TCP and UDP
To suit the differing transport requirements of the many TCP/IP applications, two TCP/IP transport layer protocols exist.

The Transmission Control Protocol (TCP) is a full-featured, connection-oriented protocol that provides acknowledged delivery of data while managing traffic flow and handling issues such as congestion and transmission loss. 

The User Datagram Protocol (UDP), in contrast, is a much simpler protocol that concentrates only on delivering data, to maximize the speed of communication when the features of TCP are not required.

Most classical applications, especially ones that send files or messages, require that data be delivered reliably, and therefore use TCP for transport. Applications using UDP are usually those where loss of a small amount of data is not a concern, or that use their own application-specific procedures for dealing with potential delivery problems that TCP handles more generally.

| "UDP" | "TCP" |
| :---: | :---: |
| Simple, high-speed, low-functionality “wrapper” that interfaces applications to the network layer and does little else. | Full-featured protocol that allows applications to send data reliably without worrying about network layer issues. |

# <a id="http-and-ssh"></a>HTTP and SSH
The engine of the World Wide Web is the application protocol that defines how Web servers and clients exchange information: the Hypertext Transfer Protocol (HTTP). 

HTTP is a client/server-oriented, request/reply protocol. Basic communication consists of an HTTP Request message sent by an HTTP client to an HTTP server, which returns an HTTP Response message back to the client.

- **HTTP Messages**

Each HTTP message begins with a start line, then contains a number of message headers, followed by an empty line and optionally a message body. The body of the message may contain a resource such as a file to be communicated between client and server, called an entity.

HTTP requests are the means by which HTTP clients ask servers to take a particular type of action, such as sending a file or processing user input. Each request message begins with a request line, which contains three critical pieces of information: the method (type of action) the client is requesting; the URI of the resource upon which the client wishes the action to be performed, and the version of HTTP that the client is using. After the request line come a set of message headers related to the request, followed by a blank line and then optionally, the message body of the request.

Each HTTP request sent by a client leads to a server returning one or more HTTP responses. Each response message starts with a status line that contains the server’s HTTP version number, and a numeric status code and text reason phrase that indicate the result of processing the client’s request. The message then contains headers related to the response, followed by a blank line and then the optional message body. Since most HTTP requests ask for a server to return a file or other resource, many HTTP responses carry an entity in the message body.

Each HTTP client request specifies a particular type of action that the server perform; in HTTP, these are called not commands but rather methods. The three most common HTTP methods are GET, which prompts a server to return a resource; HEAD, which returns just the headers associated with a resource; and PUT, which allows a client to submit data to a server for processing.

- **HTTP Features, Capabilities and Issues**
The most important feature that improves the efficiency of operation of HTTP is caching—the storing of recently-requested resources in a temporary area. If the same resource is then needed again a short time later, it can be retrieved from the cache rather than requiring a fresh request to the server, resulting in a savings of both time and bandwidth. Caching can be performed by Web clients, servers and intermediaries. The closer the cache is to the user, the greater the efficiency benefits; the farther from the user, the greater the number of users that can benefit from the cache.

One of the most important types of intermediary devices in HTTP is a proxy server, which acts as a middleman between the client and server, handling both requests and responses. A proxy server may either transport messages unchanged or may modify them to implement certain features and capabilities. Proxies are often used to increase the security and/or performance of Web access.

HTTP is an inherently stateless protocol, because a server treats each request from a client independently, forgetting about all prior requests. This characteristic of HTTP is not an issue for most routine uses of the World Wide Web, but is a problem for interactive applications such as online shopping where the server needs to keep track of a user’s information over time. To support these applications, most HTTP implementations include an optional feature called state management. When enabled, a server sends to a client a small amount of information called a cookie, which is stored on the client machine. The data in the cookie is returned to the server with each subsequent request, allowing the server to update it and send it back to the client again. Cookies thus enable servers to remember user data between requests. However, they are controversial, because of certain potential privacy and security concerns related to their use.
