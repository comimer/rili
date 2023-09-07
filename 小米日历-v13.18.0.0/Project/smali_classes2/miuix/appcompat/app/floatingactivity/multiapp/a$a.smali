.class public abstract Lmiuix/appcompat/app/floatingactivity/multiapp/a$a;
.super Landroid/os/Binder;
.source "IFloatingService.java"

# interfaces
.implements Lmiuix/appcompat/app/floatingactivity/multiapp/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/multiapp/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/floatingactivity/multiapp/a$a$a;
    }
.end annotation


# direct methods
.method public static n0(Landroid/os/IBinder;)Lmiuix/appcompat/app/floatingactivity/multiapp/a;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "miuix.appcompat.app.floatingactivity.multiapp.IFloatingService"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Lmiuix/appcompat/app/floatingactivity/multiapp/a;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p0, Lmiuix/appcompat/app/floatingactivity/multiapp/a;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_1
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/multiapp/a$a$a;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/a$a$a;-><init>(Landroid/os/IBinder;)V

    .line 21
    .line 22
    .line 23
    return-object v0
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
.end method
