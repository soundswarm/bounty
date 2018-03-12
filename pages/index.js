import { view, store } from 'react-easy-state'


const Index = () => (
  <div>
    <p>Bounty {appStore.user}</p>
  </div>
)

export default view(Index)


export const appStore = store({
  user: 'ussss'
})
