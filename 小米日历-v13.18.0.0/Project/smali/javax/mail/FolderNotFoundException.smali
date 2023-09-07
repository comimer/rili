.class public Ljavax/mail/FolderNotFoundException;
.super Ljavax/mail/MessagingException;
.source "FolderNotFoundException.java"


# static fields
.field private static final serialVersionUID:J = 0x68f0e358302dafbL


# instance fields
.field private transient folder:Ljavax/mail/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/mail/b;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 9
    iput-object p2, p0, Ljavax/mail/FolderNotFoundException;->folder:Ljavax/mail/b;

    return-void
.end method

.method public constructor <init>(Ljavax/mail/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    .line 3
    iput-object p1, p0, Ljavax/mail/FolderNotFoundException;->folder:Ljavax/mail/b;

    return-void
.end method

.method public constructor <init>(Ljavax/mail/b;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Ljavax/mail/FolderNotFoundException;->folder:Ljavax/mail/b;

    return-void
.end method

.method public constructor <init>(Ljavax/mail/b;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 6
    invoke-direct {p0, p2, p3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 7
    iput-object p1, p0, Ljavax/mail/FolderNotFoundException;->folder:Ljavax/mail/b;

    return-void
.end method


# virtual methods
.method public getFolder()Ljavax/mail/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ljavax/mail/FolderNotFoundException;->folder:Ljavax/mail/b;

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
