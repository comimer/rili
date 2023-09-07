.class public final synthetic Lcom/miui/calendar/card/single/local/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/miui/calendar/view/DynamicLinearLayout$b;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/card/single/local/i;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/card/single/local/i;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/card/single/local/f;->a:Lcom/miui/calendar/card/single/local/i;

    iput p2, p0, Lcom/miui/calendar/card/single/local/f;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/card/single/local/f;->a:Lcom/miui/calendar/card/single/local/i;

    iget v1, p0, Lcom/miui/calendar/card/single/local/f;->b:I

    invoke-static {v0, v1, p1}, Lcom/miui/calendar/card/single/local/i;->v(Lcom/miui/calendar/card/single/local/i;II)V

    return-void
.end method
