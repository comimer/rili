.class public Lcom/miui/calendar/card/schema/SimpleDialogSchema;
.super Ljava/lang/Object;
.source "SimpleDialogSchema.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public message:Ljava/lang/String;

.field public negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public negativeButtonText:Ljava/lang/String;

.field public positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public positiveButtonText:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public show(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lmiuix/appcompat/app/l$b;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lmiuix/appcompat/app/l$b;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->message:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/l$b;->n(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/l$b;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->title:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/l$b;->G(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/l$b;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->positiveButtonText:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/l$b;->A(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/l$b;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->negativeButtonText:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/miui/calendar/card/schema/SimpleDialogSchema;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/l$b;->s(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/l$b;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lmiuix/appcompat/app/l$b;->J()Lmiuix/appcompat/app/l;

    .line 35
    .line 36
    .line 37
    return-void
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
