// import Select from '@material-ui/core/Select';
import Grid from '@material-ui/core/Grid';
import ChatList from './ChatList';
import Button from '@material-ui/core/Button';
import TextField from '@material-ui/core/TextField';
import Icon from '@material-ui/icons/Send';
import React from 'react';
import { withStyles } from '@material-ui/core/styles';
import Paper from '@material-ui/core/Paper';
import {
 ResponsiveContainer,
} from 'recharts';

const styles = (theme) => ({
  fC:{
    width: 1000,

  },
  formControl: {
    margin: theme.spacing(2),
    minWidth: 200,
    
    
  },
  selectEmpty: {
    marginTop: theme.spacing(0),
  },
  textF: {
    '& .MuiTextField-root': {
      margin: theme.spacing(2),
      // width: '50ch',
       minWidth: 400,
    // wifth: '25ch'
    },
  },
  button: {
    '& > *': {
    width:225,
    height: 40,
    margin: theme.spacing(2),
    },
  },
});


class Chat extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      isGoing: true,
      numberOfGuests: 2,
      post: false,
      text : '',
      username:''
    };

    this.handleInputChange = this.handleInputChange.bind(this);
    this.buttonChange = this.buttonChange.bind(this);
  }
  
 
    
    
    componentDidMount() {
      const u1 = localStorage.getItem('user');
    
    console.log(u1)
    this.setState({ username:u1 });
    };

  buttonChange(event){
    this.setState({
        text: '',
    });
  }

  handleInputChange(event) {
    const target = event.target;
    const value = target.type === 'checkbox' ? target.checked : target.value;
    const name = target.name;
    console.log(name)
    console.log(target)
    if (name === 'post'){
      console.log("button click")
      this.setState({
        text: '',
        post: false
      });
    }
    else{
    this.setState({
      [name]: value
    });
  }
  }

  render() {
    const {classes} = this.props;
    
    return (  
         <Paper>
    
      <Grid container spacing={2} 
        direction="row"
        justify="space-evenly"
         alignItems="center"
         
         >

        <Grid item xs = {12}>
          <div>
          <ChatList/>
          </div>
        </Grid>
        
          <Grid item xs = {12} sm = {12} md = {9}>
          <ResponsiveContainer width='100%'  aspect={4.0/2.0}>
            <div> 
            <form className={classes.textF} noValidate autoComplete="off">
              <TextField id="outlined-basic" 
              name = 'text'
              value = {this.state.text}
              label="Post your prediction"  
              multiline rows = {3} 
              variant="outlined"
              size = 'medium'
              onChange = {this.handleInputChange}
              />
            </form>
            </div>
            </ResponsiveContainer>
          </Grid>

          {/* <Grid item xs = {6} sm = {6} md = {3}>
           <div>
            <FormControl variant="outlined" className={classes.formControl}>
            <InputLabel id="demo-simple-select-outlined-label">Stock</InputLabel>
              <Select
                name="stock"
                labelId="demo-simple-select-outlined-label"
                id="demo-simple-select-outlined"
                value={this.state.stock}
                onChange={this.handleInputChange}
                label="Age"
              >
                <MenuItem value="">
                  <em>None</em>
                </MenuItem>
                <MenuItem value={'GOOGL'}>Google </MenuItem>
                <MenuItem value={'AMZN'}>Amazon</MenuItem>
                <MenuItem value={'F'}>Ford</MenuItem>
                <MenuItem value={'WMT'}>Walmart</MenuItem>
                
              </Select>
            </FormControl>
            </div>
          </Grid> */}
          
          <Grid item xs = {12} sm = {12} md = {3}>
           <div>
              <Button
              name = "post"
              type = "submit"
               onClick= {
                 this.buttonChange
                }
                variant="contained"
                color="primary"
                endIcon={<Icon>send</Icon>}
                >
                Post
              </Button>
              </div> 
          </Grid> 
          
        </Grid>
        </Paper>
    );
   
  }
}

export default withStyles(styles, )(Chat);