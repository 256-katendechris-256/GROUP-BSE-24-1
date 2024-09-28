import { PrettyChatWindow } from 'react-chat-engine-pretty';

const ChatsPage = ({ user }) => {
  return (
    <div style={{ height: '100vh' }}>
      <PrettyChatWindow
        projectId='c861f3a7-8084-4131-8d14-91b3b78dab30'
        username={user.username}  // Access 'user' directly since it's destructured
        secret={user.secret}      // Similarly for the secret
        style={{ height: '100%' }}
      />
    </div>
  );
};

export default ChatsPage;
