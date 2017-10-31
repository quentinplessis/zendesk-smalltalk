# zendesk-smalltalk
Pharo Smalltalk Zendesk Client Library

## Supported Smalltalk Versions
[Pharo Smalltalk](http://pharo.org/) 5.0, 6.0, 6.1

```Smalltalk
Metacello new
    baseline: 'Zendesk';
    repository: 'github://quentinplessis/zendesk-smalltalk/pharo-repository';
    load.
```

## How to use

### Setup

```smalltalk
ZendeskSettings default token: 'PROJECT_TOKEN'
ZendeskSettings default emailAddress: 'EMAIL_ADDRESS'.
ZendeskSettings default subdomain: 'SUBDOMAIN'.
ZendeskSettings default apiVersion: 'VERSION'.
```

### Show a ticket

```smalltalk
zendeskTickets := ZendeskTickets new.
ticketId := 0
zendeskTickets show: ticketId onErrorCallback: [  ]  
```


### Create a ticket

```smalltalk
zendeskTickets := ZendeskTickets new.

commentData := NeoJSONObject new.
commentData at: 'body' put: 'Test comment body'.

ticketData := NeoJSONObject new.
ticketData
	at: 'subject' put: 'Test subject';
	at: 'comment' put: commentData;
	at: 'priority' put: 'urgent'.
    
zendeskTickets create: ticketData onErrorCallback: [  ].
```
