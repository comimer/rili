.class public Lcom/sun/mail/imap/MessageVanishedEvent;
.super Ljavax/mail/event/MessageCountEvent;
.source "MessageVanishedEvent.java"


# static fields
.field private static final noMessages:[Ljavax/mail/Message;

.field private static final serialVersionUID:J = 0x1dba032059e3b7daL


# instance fields
.field private uids:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljavax/mail/Message;

    .line 3
    .line 4
    sput-object v0, Lcom/sun/mail/imap/MessageVanishedEvent;->noMessages:[Ljavax/mail/Message;

    .line 5
    .line 6
    return-void
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public constructor <init>(Ljavax/mail/b;[J)V
    .locals 3

    .line 1
    sget-object v0, Lcom/sun/mail/imap/MessageVanishedEvent;->noMessages:[Ljavax/mail/Message;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {p0, p1, v1, v2, v0}, Ljavax/mail/event/MessageCountEvent;-><init>(Ljavax/mail/b;IZ[Ljavax/mail/Message;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lcom/sun/mail/imap/MessageVanishedEvent;->uids:[J

    .line 9
    .line 10
    return-void
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method


# virtual methods
.method public getUIDs()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/mail/imap/MessageVanishedEvent;->uids:[J

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
