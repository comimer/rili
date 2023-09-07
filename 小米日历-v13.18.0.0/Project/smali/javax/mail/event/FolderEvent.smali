.class public Ljavax/mail/event/FolderEvent;
.super Ljavax/mail/event/MailEvent;
.source "FolderEvent.java"


# static fields
.field public static final CREATED:I = 0x1

.field public static final DELETED:I = 0x2

.field public static final RENAMED:I = 0x3

.field private static final serialVersionUID:J = 0x493fb076540416e3L


# instance fields
.field protected transient folder:Ljavax/mail/b;

.field protected transient newFolder:Ljavax/mail/b;

.field protected type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljavax/mail/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p2, p3}, Ljavax/mail/event/FolderEvent;-><init>(Ljava/lang/Object;Ljavax/mail/b;Ljavax/mail/b;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavax/mail/b;Ljavax/mail/b;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Ljavax/mail/event/FolderEvent;->folder:Ljavax/mail/b;

    .line 4
    iput-object p3, p0, Ljavax/mail/event/FolderEvent;->newFolder:Ljavax/mail/b;

    .line 5
    iput p4, p0, Ljavax/mail/event/FolderEvent;->type:I

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Ljavax/mail/event/FolderEvent;->type:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    check-cast p1, Ljavax/mail/event/b;

    .line 7
    .line 8
    invoke-interface {p1, p0}, Ljavax/mail/event/b;->d(Ljavax/mail/event/FolderEvent;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x2

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    check-cast p1, Ljavax/mail/event/b;

    .line 16
    .line 17
    invoke-interface {p1, p0}, Ljavax/mail/event/b;->m(Ljavax/mail/event/FolderEvent;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, 0x3

    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    .line 24
    check-cast p1, Ljavax/mail/event/b;

    .line 25
    .line 26
    invoke-interface {p1, p0}, Ljavax/mail/event/b;->l(Ljavax/mail/event/FolderEvent;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    return-void
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
.end method

.method public getFolder()Ljavax/mail/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ljavax/mail/event/FolderEvent;->folder:Ljavax/mail/b;

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

.method public getNewFolder()Ljavax/mail/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ljavax/mail/event/FolderEvent;->newFolder:Ljavax/mail/b;

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

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Ljavax/mail/event/FolderEvent;->type:I

    .line 2
    .line 3
    return v0
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
