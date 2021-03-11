import React, { Component } from 'react';
import { BrowserRouter as Router, Route} from 'react-router-dom';
import './App.css';
import Header from './components/layout/Header';
import About from './components/pages/About';
import Login from './components/pages/Login';
import SignUp from './components/pages/SignUp';
import FetchStockPrices from './components/layout/FetchStockPrices';
import MaterialTable from './components/layout/MaterialTable';
import DayPriceGraph from './components/layout/DayPriceGraph';
// import HTable from './components/layout/HTable';
import { makeStyles } from '@material-ui/core/styles';
import Paper from '@material-ui/core/Paper';
import Grid from '@material-ui/core/Grid';
import Chat from './components/layout/Chat';
// import SearchTextBox from './components/layout/SearchTextBox';
import RadioB from './components/layout/RadioB';
import Search from './components/layout/Search';
import ChatList from './components/layout/ChatList';

class App extends Component {
  state = {
    username: '',
    password: '',
    userId: '',
    authenticated: false
  }


  login = (username, password) => {
    this.setState({ username: username, password: password, userId: 123, authenticated: true });
  }

  render() {
    console.log(this.state);
    return (
      <Router>
        <div className="App">
          <div className="container">
            {/* <div style={{padding: 0}}> */}
            {/* <div className={useStyles.root}> */}
              <Header />
              <Route exact path="/" render={props => (
                <React.Fragment>
                  <Grid container spacing={3}>
                  <Grid item xs={12}>
                    <FetchStockPrices />
                  </Grid>

                  <Grid item xs={6}>
                    {/* <SearchTextBox /> */}
                    <Search />
                  </Grid>

                  <Grid item xs={6}>
                    {/* <DayPriceGraph /> */}
                    <RadioB />
                  </Grid>

                  <Grid item xs={6}>
                    <MaterialTable /> 
                  </Grid>

                  {/* <Grid item xs={6}>
                      <ChatList />
                   </Grid> */}

                  <Grid item xs={6}>
                      <Chat />
                  </Grid>

                </Grid>
                
                </React.Fragment>
              )} />
              <Route path="/about" component={About} />
              <Route path="/login">
                <Login login={this.login}  accounts ={[
      { username: 'user123', password: 'password123', post: 'It gonna go up' },
      { username: 'Wolff', password: 'Wolffman', post: 'It gonna go doen' },
      { username: 'Blaha', password: 'fireplace', post: 'It gonna' },
      
    ]}/>
              </Route>
              <Route path="/signup">
                <SignUp login={this.login} />
              </Route>
              {/* </div> */}
          </div>
        </div>
      </Router>
    );
  }
}

export default App;