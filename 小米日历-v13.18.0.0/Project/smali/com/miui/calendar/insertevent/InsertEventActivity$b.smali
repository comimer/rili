.class Lcom/miui/calendar/insertevent/InsertEventActivity$b;
.super Ljava/lang/Object;
.source "InsertEventActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/insertevent/InsertEventActivity;->f0(Landroid/content/Intent;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/miui/calendar/insertevent/InsertEventActivity;


# direct methods
.method constructor <init>(Lcom/miui/calendar/insertevent/InsertEventActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/insertevent/InsertEventActivity$b;->b:Lcom/miui/calendar/insertevent/InsertEventActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/miui/calendar/insertevent/InsertEventActivity$b;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    const/4 p1, 0x2

    .line 2
    new-array p1, p1, [Ljava/lang/String;

    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    const-string v0, "title"

    .line 6
    .line 7
    aput-object v0, p1, p2

    .line 8
    .line 9
    iget-object p2, p0, Lcom/miui/calendar/insertevent/InsertEventActivity$b;->a:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    aput-object p2, p1, v0

    .line 13
    .line 14
    const-string p2, "third_party_insert_event_cancel"

    .line 15
    .line 16
    invoke-static {p2, p1}, Lcom/miui/calendar/util/g0;->f(Ljava/lang/String;[Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/miui/calendar/insertevent/InsertEventActivity$b;->b:Lcom/miui/calendar/insertevent/InsertEventActivity;

    .line 20
    .line 21
    invoke-virtual {p1}, Lmiuix/appcompat/app/m;->finish()V

    .line 22
    .line 23
    .line 24
    return-void
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
