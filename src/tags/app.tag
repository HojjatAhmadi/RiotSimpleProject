<app class='w-75 d-flex gap-3 flex-column'>
    <div class='w-100 d-flex justify-content-start align-items-center gap-3' each={p in state.product}>
        <span>{p.id}.</span>
        <h4>{p.name}</h4>
        <span class='badge bg-primary'>{p.count}</span>
        <button id={p.id} class='btn btn-success' onclick={()=>{handleIncrement(p.id)}}>+</button>
        <button id={p.id} class='btn btn-warning' onclick={()=>{handleIDecrement(p.id)}}>-</button>
        <button id={p.id} class='btn btn-danger' onclick={()=>{handleDelete(p.id)}}>delete</button>
    </div>
    <script>
        export default {
            onBeforeMount() {
                this.state = {
                    product : [
                        {id : "1" , name : "Banana" , price : "25000" , count : 50},
                        {id : "2" , name : "Apple" , price : "5000" , count : 3},
                        {id : "3" , name : "Tomato" , price : "30000" , count : 100}
                    ]
                }
            },

            handleIncrement(id){
                this.state.product.map(e => {
                    if(e.id == id){
                        e.count = e.count + 1;
                    }
                })
                this.update()
            },

            handleIDecrement(id){
                this.state.product.map(e => {
                    if(e.id == id && e.count > 0){
                        e.count = e.count - 1;
                    }
                })
                this.update()
            },

            handleDelete(id){
                this.state.product = this.state.product.filter(e => e.id != id);
                this.state.product.map((e,index) => {
                    e.id = index+1;
                })
                this.update();
            }
        }
    </script>
</app>