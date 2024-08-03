import * as riot from 'riot'
import App from './tags/app.tag'

const mountApp = riot.component(App)

let state = [
    {id:0 , title:'hello world' , desc:'desc 1'},
    {id:1 , title:'Nice world' , desc:'desc 2'}
]

const app = mountApp(
  document.querySelector('#root app'),
  { message: 'nice', items: [] }
)

