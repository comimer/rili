.class public final synthetic Lcom/miui/calendar/card/single/local/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/miui/calendar/view/DynamicLinearLayout$b;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/card/single/local/i;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/card/single/local/i;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/card/single/local/h;->a:Lcom/miui/calendar/card/single/local/i;

    iput p2, p0, Lcom/miui/calendar/card/single/local/h;->b:I

    iput-object p3, p0, Lcom/miui/calendar/card/single/local/h;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/calendar/card/single/local/h;->a:Lcom/miui/calendar/card/single/local/i;

    iget v1, p0, Lcom/miui/calendar/card/single/local/h;->b:I

    iget-object v2, p0, Lcom/miui/calendar/card/single/local/h;->c:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/calendar/card/single/local/i;->x(Lcom/miui/calendar/card/single/local/i;ILjava/util/List;I)V

    return-void
.end method
