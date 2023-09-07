.class public Lcom/sun/mail/util/FolderClosedIOException;
.super Ljava/io/IOException;
.source "FolderClosedIOException.java"


# static fields
.field private static final serialVersionUID:J = 0x3b699a4df297b817L


# instance fields
.field private transient folder:Ljavax/mail/b;


# direct methods
.method public constructor <init>(Ljavax/mail/b;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/b;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljavax/mail/b;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/sun/mail/util/FolderClosedIOException;->folder:Ljavax/mail/b;

    return-void
.end method


# virtual methods
.method public getFolder()Ljavax/mail/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/mail/util/FolderClosedIOException;->folder:Ljavax/mail/b;

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
