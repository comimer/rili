.class Lmiuix/preference/k$a;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "PreferenceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/preference/k;


# direct methods
.method constructor <init>(Lmiuix/preference/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/preference/k$a;->a:Lmiuix/preference/k;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    .line 4
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
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lmiuix/preference/k$a;->a:Lmiuix/preference/k;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/preference/h;->getItemCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    new-array v1, v1, [Lmiuix/preference/k$b;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lmiuix/preference/k;->q(Lmiuix/preference/k;[Lmiuix/preference/k$b;)[Lmiuix/preference/k$b;

    .line 13
    .line 14
    .line 15
    return-void
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
.end method
