.class public Lh5/g;
.super Ljavax/mail/f;
.source "IMAPProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    sget-object v1, Ljavax/mail/f$a;->b:Ljavax/mail/f$a;

    .line 2
    .line 3
    const-class v0, Lh5/j;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const-string v2, "imap"

    .line 10
    .line 11
    const-string v4, "Oracle"

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    move-object v0, p0

    .line 15
    invoke-direct/range {v0 .. v5}, Ljavax/mail/f;-><init>(Ljavax/mail/f$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method
