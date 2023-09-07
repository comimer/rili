.class public Lcom/sun/mail/imap/protocol/c;
.super Ljava/lang/Object;
.source "ENVELOPE.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/h;


# static fields
.field static final h:[C

.field private static final i:Ljavax/mail/internet/MailDateFormat;

.field private static final j:Z


# instance fields
.field public a:Ljava/util/Date;

.field public b:Ljava/lang/String;

.field public c:[Ljavax/mail/internet/InternetAddress;

.field public d:[Ljavax/mail/internet/InternetAddress;

.field public e:[Ljavax/mail/internet/InternetAddress;

.field public f:[Ljavax/mail/internet/InternetAddress;

.field public g:[Ljavax/mail/internet/InternetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/sun/mail/imap/protocol/c;->h:[C

    .line 9
    .line 10
    new-instance v0, Ljavax/mail/internet/MailDateFormat;

    .line 11
    .line 12
    invoke-direct {v0}, Ljavax/mail/internet/MailDateFormat;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/sun/mail/imap/protocol/c;->i:Ljavax/mail/internet/MailDateFormat;

    .line 16
    .line 17
    const-string v0, "mail.imap.parse.debug"

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {v0, v1}, Lcom/sun/mail/util/h;->b(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sput-boolean v0, Lcom/sun/mail/imap/protocol/c;->j:Z

    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 2
        0x45s
        0x4es
        0x56s
        0x45s
        0x4cs
        0x4fs
        0x50s
        0x45s
    .end array-data
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
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method
